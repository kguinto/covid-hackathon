
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
      'Syringa Hospital',
      '607 W Main St
Grangeville, ID 83530',
      'Grangeville',
      'ID',
      '607 W MAIN',
      'Yes',
      '45.9265605',
      '-116.1271556'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Syringa Hospital'
        AND o.latitude = '45.9265605'
        AND o.longitude = '-116.1271556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Syringa Hospital'
        AND o.latitude = '45.9265605'
        AND o.longitude = '-116.1271556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Syringa Hospital'
        AND o.latitude = '45.9265605'
        AND o.longitude = '-116.1271556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Syringa Hospital'
        AND o.latitude = '45.9265605'
        AND o.longitude = '-116.1271556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Syringa Hospital'
        AND o.latitude = '45.9265605'
        AND o.longitude = '-116.1271556'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Syringa Hospital'
        AND o.latitude = '45.9265605'
        AND o.longitude = '-116.1271556'));

COMMIT;
