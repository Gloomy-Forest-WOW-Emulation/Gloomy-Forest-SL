-- 
SET NAMES 'utf8';
DELETE FROM `broadcast_text_locale` WHERE (`locale`='ptBR' AND `ID` IN (218743,218742,218721,218667,218563,218562,218478,216721,214459,214004,214003,213474,213473,213135,200237,199883));
INSERT INTO `broadcast_text_locale` (`ID`, `locale`, `Text_lang`, `Text1_lang`, `VerifiedBuild`) VALUES
(218743, 'ptBR', 'Tem um portal para Gnomecan no andar de cima, na Arena da Transferência.\n\nDisseram que ele coloca você bem na entrada. Muito conveniente!', '', 45114),
(218742, 'ptBR', 'Tem um portal para Karazhan no andar de cima, na Arena da Transferência.\n\nCertamente você já conhece a entrada secreta nos fundos da torre.', '', 45114),
(218721, 'ptBR', 'A terra selvagem que você procura é conhecida como Gorgrond.\n\nHá um portal para Gorgrond no andar de cima, na Arena da Transferência.', '', 45114),
(218667, 'ptBR', 'Um acordo de benefício mútuo. Aguardo ansioso pelo nosso sucesso.', 'Um acordo de benefício mútuo. Aguardo ansioso pelo nosso sucesso.', 45114),
(218563, 'ptBR', 'As moedas dessa cunhagem são muito raras. Apesar de belas, pouco se sabe sobre elas, exceto que se materializam apenas em lugares de significado cósmico extremo.\n\nMesmo assim, são completamente sem valor! Ninguém nas Terras Sombrias vai aceitá-las. Para você, camarada, elas são tão úteis quanto pedras.\n\nMeus sócios e eu vamos partir de Oribos em breve, mas nossos tesouros são muito numerosos para levar conosco. Entretanto, há a possiblidade de um câmbio mutuamente beneficente. Permita-nos livrar você de quaisquer dessas moedas que você encontrar e, em troca, você poderá levar uma das nossas prendas. Um bom escambo, e nós é que saímos em desvantagem, não?\n\nNão se preocupe com a nossa compensação, $Umeu amigo:minha amiga;. Ajudar você já é recompensa suficiente. Temos um acordo?', '', 45114),
(218562, 'ptBR', '<So\'turu olha intensamente a moeda na sua mão.>\n\nCaminhante da Gorja! Veio negociar? Permita-nos mostrar as melhores mercadorias das Terras Sombrias.', '', 45114),
(218478, 'ptBR', 'Posso lhe oferecer benefícios para cada Senhor do Medo que você me ajudar a capturar. O que me diz, camarada?', 'Posso lhe oferecer benefícios para cada Senhor do Medo que você me ajudar a capturar. O que me diz, camarada?', 45114),
(216721, 'ptBR', 'Um estranho dispositivo está diante de você.', 'Um estranho dispositivo está diante de você.', 45114),
(214459, 'ptBR', 'Como dizem os Illidari: estou aqui para ajudar!', 'Como dizem os Illidari: estou aqui para ajudar!', 45114),
(214004, 'ptBR', 'Pode levar muito tempo para entendermos esses ensinamentos, mas eles estarão seguros conosco.', '', 45114),
(214003, 'ptBR', 'Forças da Gorja roubaram conhecimentos importantes. Recupere-os para que fiquem protegidos.', '', 45114),
(213474, 'ptBR', '', 'Maravilha! Você conseguiu recuperar alguma coisa da empreitada desastrosa dos meus colegas.', 45114),
(213473, 'ptBR', '', 'A área está apinhada de criaturas nefastas. Nós tentamos detê-las, mas... não deu muito certo. Ajude-nos.', 45114),
(213135, 'ptBR', 'Um zumbido fraco e agradável emana de cima.', 'Um zumbido fraco e agradável emana de cima.', 45114),
(200237, 'ptBR', 'Hoje dia de Alexandros!\n\nEle gosta aspirantes. Leva suco docinho.\n\nEle fica perto do Crisol do Aspirante.\n\nPode levar puriana madura?', '', 45114),
(199883, 'ptBR', 'Ah, nós não nos importamos. \n\nEu e meus amigos fomos entrando assim que chegamos. Imaginei que a ideia de esperar lá fora fosse mais para... os outros convidados.\n\nNão se preocupe, nós não vamos atrapalhar!\n\nEi, aproveitando a deixa... hã, onde você guarda os fogos?', '', 45114);

UPDATE `broadcast_text_locale` SET `Text1_lang`='U$um:ma; estranh$uo:a;? Aqui? Não vá caçar confusão na nossa cidade.', `VerifiedBuild`=45114 WHERE (`ID`=63500 AND `locale`='ptBR');

SET NAMES 'latin1';