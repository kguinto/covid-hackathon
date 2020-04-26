
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
      'Merit Health River Oaks',
      '1030 River Oaks Dr
Flowood, MS 39232',
      'Flowood',
      'MS',
      '',
      'Yes',
      '32.3254871',
      '-90.1053085'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merit Health River Oaks'
        AND o.latitude = '32.3254871'
        AND o.longitude = '-90.1053085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merit Health River Oaks'
        AND o.latitude = '32.3254871'
        AND o.longitude = '-90.1053085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merit Health River Oaks'
        AND o.latitude = '32.3254871'
        AND o.longitude = '-90.1053085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merit Health River Oaks'
        AND o.latitude = '32.3254871'
        AND o.longitude = '-90.1053085'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Merit Health River Oaks'
        AND o.latitude = '32.3254871'
        AND o.longitude = '-90.1053085'));

COMMIT;
