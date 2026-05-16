/*createdb -U postgres music_service
psql -U postgres -d test*/


CREATE TABLE IF NOT EXISTS singers(
	id SERIAL PRIMARY KEY,
	pseudonym VARCHAR(80) UNIQUE NOT NULL
);

CREATE TABLE IF NOT EXISTS genres(
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL
);

/* 1 ко 1-му*/
CREATE TABLE IF NOT EXISTS alboms(
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL,
	year INTEGER CHECK (year  > 1900 AND year < 2100)
);

CREATE TABLE IF NOT EXISTS tracks(
	id SERIAL PRIMARY KEY,
	albom_id INTEGER NOT NULL REFERENCES alboms(id),
	duration TIME,
	name VARCHAR(80)
);


CREATE TABLE IF NOT EXISTS collections(
	id SERIAL PRIMARY KEY,
	name VARCHAR(80) UNIQUE NOT NULL,
	year INTEGER CHECK (year  > 1900 AND year < 2100)
);

/*многие ко многим*/
CREATE TABLE IF NOT EXISTS singersgenres(
	singer_id INTEGER REFERENCES singers(id),
	genre_id INTEGER REFERENCES genres(id),
	CONSTRAINT pk PRIMARY KEY (singer_id, genre_id)
);

/*многие ко многим*/
CREATE TABLE IF NOT EXISTS singersalboms(
	/*id SERIAL PRIMARY KEY,*/
	albom_id INTEGER NOT NULL REFERENCES alboms(id),
	singer_id INTEGER NOT NULL REFERENCES singers(id),
	CONSTRAINT pk_sa PRIMARY KEY (albom_id, singer_id)
);


/*многие ко многим*/
CREATE TABLE IF NOT EXISTS trackscollections(
id SERIAL PRIMARY KEY,
	track_id INTEGER NOT NULL REFERENCES tracks(id),
	collection_id INTEGER NOT NULL REFERENCES collections(id)
)
	



