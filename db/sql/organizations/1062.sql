
BEGIN;

INSERT INTO organizations
    (
      name,
      address,
      city,
      state,
      instructions,
      accepts_opened,
      latitude,
      longitude
    )
  VALUES
    (
      'Idaho Gastroenterology',
      '425 W Bannock St
Boise, ID 83702',
      'Boise',
      'ID',
      'ATTN: Carol Lugar ',
      'Yes',
      '43.615023',
      '-116.1983739'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Idaho Gastroenterology'
        AND o.latitude = '43.615023'
        AND o.longitude = '-116.1983739'));

COMMIT;
