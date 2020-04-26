
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
      'The Crossroads Center',
      '311 Martin Luther King Dr E
Cincinnati, OH 45219',
      'Cincinnati',
      'OH',
      'Attn: Jaculin',
      'Yes',
      '39.1347623',
      '-84.5017919'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Alcohol wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Crossroads Center'
        AND o.latitude = '39.1347623'
        AND o.longitude = '-84.5017919'));

COMMIT;
