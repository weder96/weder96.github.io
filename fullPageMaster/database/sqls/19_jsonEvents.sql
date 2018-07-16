--A real world example
--OK, let’s give this a go with a real life use case. Let’s say we’re tracking analytics, so we have an events table:

CREATE TABLE events (
  name varchar(200),
  visitor_id varchar(200),
  properties json,
  browser json
);


--We’re going to store events in this table, like pageviews. Each event has properties, which could be anything (e.g. current page) and also sends information about the browser (like OS, screen resolution, etc). Both of these are completely free form and could change over time (as we think of extra stuff to track).
--Let’s insert a couple of events:

INSERT INTO events VALUES (
  'pageview', '1',
  '{ "page": "/" }',
  '{ "name": "Chrome", "os": "Mac", "resolution": { "x": 1440, "y": 900 } }'
);

INSERT INTO events VALUES (
  'pageview', '2',
  '{ "page": "/" }',
  '{ "name": "Firefox", "os": "Windows", "resolution": { "x": 1920, "y": 1200 } }'
);

INSERT INTO events VALUES (
  'pageview', '1',
  '{ "page": "/account" }',
  '{ "name": "Chrome", "os": "Mac", "resolution": { "x": 1440, "y": 900 } }'
);

INSERT INTO events VALUES (
  'purchase', '5',
  '{ "amount": 10 }',
  '{ "name": "Firefox", "os": "Windows", "resolution": { "x": 1024, "y": 768 } }'
);

INSERT INTO events VALUES (
  'purchase', '15',
  '{ "amount": 200 }',
  '{ "name": "Firefox", "os": "Windows", "resolution": { "x": 1280, "y": 800 } }'
);

INSERT INTO events VALUES (
  'purchase', '15',
  '{ "amount": 500 }',
  '{ "name": "Firefox", "os": "Windows", "resolution": { "x": 1280, "y": 800 } }'
);

--01 - Crie uma consulta de agrupa os browser por nome e mostra quantos de cada um.
--02 - Busque as visitor_id agrupando as mesma pela somatoria da visitas, sendo que as mesma deverao ser maior que zero
--03 - Busque as media agrupada pela resolution na parte X(width) e na Parte Y(height).
--04 - ache a maior resolução e qual sistema e Navegador 
--05 - ache a menor resolução e qual sistema e Navegador 

