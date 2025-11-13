<?php
/**
 * --------------------------------------------
 * GERENCIADOR DE TAREFAS (versão de terminal)
 * --------------------------------------------
 * 
 * Este script demonstra conceitos básicos e intermediários de PHP:
 * - Estruturas de repetição e decisão
 * - Manipulação de arrays e strings
 * - Leitura e escrita de arquivos (JSON)
 * - Funções e modularização
 * - Datas e formatação
 * - Interação com o usuário via terminal
 * 
 * Para executar: php tarefas.php
 */

// Caminho do arquivo onde salvaremos as tarefas
define('ARQUIVO_TAREFAS', __DIR__ . '/tarefas.json');

/**
 * Função para carregar as tarefas salvas no arquivo JSON
 * Retorna um array de tarefas ou um array vazio se o arquivo não existir
 */
function carregarTarefas() {
    if (!file_exists(ARQUIVO_TAREFAS)) {
        return [];
    }

    $json = file_get_contents(ARQUIVO_TAREFAS);
    $tarefas = json_decode($json, true);

    // Garantia de que seja sempre um array
    return is_array($tarefas) ? $tarefas : [];
}

/**
 * Função para salvar as tarefas no arquivo JSON
 */
function salvarTarefas($tarefas) {
    $json = json_encode($tarefas, JSON_PRETTY_PRINT | JSON_UNESCAPED_UNICODE);
    file_put_contents(ARQUIVO_TAREFAS, $json);
}

/**
 * Função para exibir o menu de opções
 */
function mostrarMenu() {
    echo "\n=====================================\n";
    echo "       GERENCIADOR DE TAREFAS\n";
    echo "=====================================\n";
    echo "1 - Adicionar nova tarefa\n";
    echo "2 - Listar tarefas\n";
    echo "3 - Concluir tarefa\n";
    echo "4 - Excluir tarefa\n";
    echo "5 - Sair\n";
    echo "Escolha uma opção: ";
}

/**
 * Função para adicionar uma nova tarefa
 */
function adicionarTarefa(&$tarefas) {
    echo "Digite o nome da tarefa: ";
    $nome = trim(fgets(STDIN));

    if ($nome === '') {
        echo "❌ Nome inválido.\n";
        return;
    }

    $tarefas[] = [
        'id' => uniqid(),
        'nome' => $nome,
        'status' => 'Pendente',
        'data_criacao' => date('d/m/Y H:i:s'),
        'data_conclusao' => null
    ];

    salvarTarefas($tarefas);
    echo "✅ Tarefa adicionada com sucesso!\n";
}

/**
 * Função para listar todas as tarefas
 */
function listarTarefas($tarefas) {
    if (empty($tarefas)) {
        echo "Nenhuma tarefa encontrada.\n";
        return;
    }

    echo "\n=== LISTA DE TAREFAS ===\n";
    foreach ($tarefas as $i => $tarefa) {
        echo sprintf(
            "[%d] %s | %s | Criada em: %s\n",
            $i + 1,
            $tarefa['nome'],
            $tarefa['status'],
            $tarefa['data_criacao']
        );
    }
}

/**
 * Função para marcar uma tarefa como concluída
 */
function concluirTarefa(&$tarefas) {
    listarTarefas($tarefas);

    echo "Digite o número da tarefa a concluir: ";
    $num = intval(trim(fgets(STDIN))) - 1;

    if (!isset($tarefas[$num])) {
        echo "❌ Tarefa não encontrada.\n";
        return;
    }

    $tarefas[$num]['status'] = 'Concluída';
    $tarefas[$num]['data_conclusao'] = date('d/m/Y H:i:s');
    salvarTarefas($tarefas);

    echo "✅ Tarefa marcada como concluída!\n";
}

/**
 * Função para excluir uma tarefa
 */
function excluirTarefa(&$tarefas) {
    listarTarefas($tarefas);

    echo "Digite o número da tarefa a excluir: ";
    $num = intval(trim(fgets(STDIN))) - 1;

    if (!isset($tarefas[$num])) {
        echo "❌ Tarefa não encontrada.\n";
        return;
    }

    $removida = $tarefas[$num]['nome'];
    unset($tarefas[$num]);
    $tarefas = array_values($tarefas); // reorganiza índices
    salvarTarefas($tarefas);

    echo "🗑️  Tarefa '$removida' removida.\n";
}

/**
 * Função principal do programa
 */
function main() {
    $tarefas = carregarTarefas();

    while (true) {
        mostrarMenu();
        $opcao = trim(fgets(STDIN));

        switch ($opcao) {
            case '1':
                adicionarTarefa($tarefas);
                break;
            case '2':
                listarTarefas($tarefas);
                break;
            case '3':
                concluirTarefa($tarefas);
                break;
            case '4':
                excluirTarefa($tarefas);
                break;
            case '5':
                echo "👋 Saindo... até mais!\n";
                exit;
            default:
                echo "❌ Opção inválida!\n";
        }
    }
}

// Inicia o programa
main();
