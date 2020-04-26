
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
      'Canandaigua Emergency Squad, Inc.',
      '233 N Pearl St
Canandaigua, NY 14424',
      'Canandaigua',
      'NY',
      'Please ring door bell, and stand 6 feet from door please.  Mail will deliver to our base.',
      'Yes',
      '42.8925867',
      '-77.295063'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Canandaigua Emergency Squad, Inc.'
        AND o.latitude = '42.8925867'
        AND o.longitude = '-77.295063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Canandaigua Emergency Squad, Inc.'
        AND o.latitude = '42.8925867'
        AND o.longitude = '-77.295063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Canandaigua Emergency Squad, Inc.'
        AND o.latitude = '42.8925867'
        AND o.longitude = '-77.295063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Canandaigua Emergency Squad, Inc.'
        AND o.latitude = '42.8925867'
        AND o.longitude = '-77.295063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Canandaigua Emergency Squad, Inc.'
        AND o.latitude = '42.8925867'
        AND o.longitude = '-77.295063'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Canandaigua Emergency Squad, Inc.'
        AND o.latitude = '42.8925867'
        AND o.longitude = '-77.295063'));

COMMIT;