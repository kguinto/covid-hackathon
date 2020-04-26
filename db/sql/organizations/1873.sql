
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
      'Hope Family Care Center',
      '3027 Prospect Ave
Kansas City, MO 64128',
      'Kansas City',
      'MO',
      '',
      'Yes',
      '39.0705848',
      '-94.5524094'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Hope Family Care Center'
        AND o.latitude = '39.0705848'
        AND o.longitude = '-94.5524094'));

COMMIT;
