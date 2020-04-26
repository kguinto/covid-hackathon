
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
      'Community Options Inc',
      '2525 E Missouri Ave
El Paso, TX 79903',
      'El Paso',
      'TX',
      'Mailing Address or we pick up',
      'Yes',
      '31.7785381',
      '-106.4640078'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Community Options Inc'
        AND o.latitude = '31.7785381'
        AND o.longitude = '-106.4640078'));

COMMIT;
