var db = require('../data/db');

exports.loadAll = () => {
	var sql=`select * from adminUsers`;
	return db.load(sql);
}

exports.add = user => {
    var sql = `insert into adminUsers(email, password, name, tel) values('${user.email}', '${user.password}', '${user.name}', '${user.tel}');`;
    return db.save(sql);
}

exports.update = user => {
	var sql=`update adminUsers set name='${user.name}', password='${user.password}', email='${user.email}', tel=${user.tel} where id=${user.id};`;
	return db.save(sql);
}

exports.stt = (id) => {
	var sql=`update adminUsers set stt=0 where id=${id};`;
	return db.save(sql);
}

exports.singleId = (id) => {
    var sql = `select * from adminUsers where id=${id};`;
    return db.load(sql);
}

exports.singleEmail = (email) => {
    var sql = `select * from adminUsers where email='${email}';`;
    return db.load(sql);
}