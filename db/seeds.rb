# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

# CADASTRANDO USUÁRIOS
usr1 = Usuario.create({ nome: 'Rafael Leonan', email: 'faelleonan@gmail.com', password: 'admin123', tipo: 'ADMIN' })
usr2 = Usuario.create({ nome: 'Nathan Costa', email: 'nathancosta.nsc@gmail.com', password: 'admin123', tipo: 'ADMIN' })
usr3 = Usuario.create({ nome: 'Breno Dias', email: 'brenodias002@gmail.com', password: 'admin123', tipo: 'ADMIN' })
usr0 = Usuario.create({ nome: 'Gerente', email: 'gerente@gmail.com', password: 'gerente123', tipo: 'GERENTE' })
usr4 = Usuario.create({ nome: 'Supervisor 1', email: 'supervisor1@gmail.com', password: 'supervisor123', tipo: 'SUPERVISOR' })
usr5 = Usuario.create({ nome: 'Supervisor 2', email: 'supervisor2@gmail.com', password: 'supervisor123', tipo: 'SUPERVISOR' })
usr6 = Usuario.create({ nome: 'Supervisor 3', email: 'supervisor3@gmail.com', password: 'supervisor123', tipo: 'SUPERVISOR' })

# CADASTRANDO MODELOS DE MÁQUINAS
modelo1 = ModeloMaquina.create({ descricao: 'Reta' })
modelo2 = ModeloMaquina.create({ descricao: 'Overloque' })
modelo3 = ModeloMaquina.create({ descricao: 'Interloque' })
modelo4 = ModeloMaquina.create({ descricao: 'Galoneira' })
modelo5 = ModeloMaquina.create({ descricao: 'Caseadeira' })
modelo6 = ModeloMaquina.create({ descricao: 'Botoneira' })
modelo7 = ModeloMaquina.create({ descricao: 'Zigue-zague' })

# CADASTRANDO MÁQUINAS DE COSTURA
maquina1 = MaquinaCostura.create({ fabricante: 'Fabricante 1', modelo_maquina_id: modelo1.id })
maquina2 = MaquinaCostura.create({ fabricante: 'Fabricante 2', modelo_maquina_id: modelo2.id })
maquina3 = MaquinaCostura.create({ fabricante: 'Fabricante 3', modelo_maquina_id: modelo3.id })
maquina4 = MaquinaCostura.create({ fabricante: 'Fabricante 4', modelo_maquina_id: modelo4.id })
maquina5 = MaquinaCostura.create({ fabricante: 'Fabricante 5', modelo_maquina_id: modelo5.id })
maquina6 = MaquinaCostura.create({ fabricante: 'Fabricante 6', modelo_maquina_id: modelo6.id })
maquina7 = MaquinaCostura.create({ fabricante: 'Fabricante 6', modelo_maquina_id: modelo7.id })

# CADASTRANDO COSTUREIRAS

costureira1 = Costureira.create({ nome: 'Costureira 1', idade: 22, sexo: 'F', usuario_id: usr4.id, maquina_costura_id: maquina1.id })
costureira2 = Costureira.create({ nome: 'Costureira 2', idade: 23, sexo: 'F', usuario_id: usr4.id, maquina_costura_id: maquina2.id })
costureira3 = Costureira.create({ nome: 'Costureira 3', idade: 30, sexo: 'F', usuario_id: usr5.id, maquina_costura_id: maquina3.id })
costureira4 = Costureira.create({ nome: 'Costureira 4', idade: 44, sexo: 'F', usuario_id: usr5.id, maquina_costura_id: maquina4.id })
costureira5 = Costureira.create({ nome: 'Costureira 5', idade: 21, sexo: 'F', usuario_id: usr5.id, maquina_costura_id: maquina5.id })
costureira6 = Costureira.create({ nome: 'Costureira 6', idade: 35, sexo: 'F', usuario_id: usr6.id, maquina_costura_id: maquina6.id })
costureira7 = Costureira.create({ nome: 'Costureira 6', idade: 20, sexo: 'F', usuario_id: usr6.id, maquina_costura_id: maquina7.id })


