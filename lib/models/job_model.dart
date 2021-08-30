class JobModel {
  final String id;
  final String reference;
  final String name;
  final String type;
  final String location;
  final String tools;
  final String start;
  final String end;
  final String details;

  JobModel(
      {this.id,
      this.reference,
      this.name,
      this.type,
      this.location,
      this.tools,
      this.start,
      this.end,
      this.details});
}

List<JobModel> dummyData = [
  new JobModel(
      id: '1',
      reference: '#111',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '2',
      reference: '#222',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '19 de Maio de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibctetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '3',
      reference: '#354',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '4',
      reference: '#847',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet ccupiditate earum quia illo eum.'),
  new JobModel(
      id: '5',
      reference: '#456',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1090',
      details:
          'Losectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '6',
      reference: '#123',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '7',
      reference: '#675',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit veamet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '8',
      reference: '#678',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '9',
      reference: '#564',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.'),
  new JobModel(
      id: '10',
      reference: '#100',
      name: 'Instalação de Redes',
      type: 'Redes',
      location: 'Zango 0, Viana',
      tools: 'Máquina de Solda',
      start: '21 de Junho de 2021',
      end: '01 de Julho de 1990',
      details:
          'Lorem ipsum dolor sit amet consectetur, adipisicing elit. Reprehenderit velit quibusdam nulla itaque illum nam corporis eum adipisci iusto, saepe quod, assumenda nisi alias non voluptas sunt aliquid laboriosam aut.Lorem ipsum dolor sit, amet consectetur adipisicing elit. Architecto aspernatur culpa magnam ab est nam nostrum cupiditate repellendus. Accusamus consequatur, magni placeat officia quidem quis cupiditate earum quia illo eum.')
];
