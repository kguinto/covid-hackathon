
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
      'East Central District Health Department',
      '822 15th St
Columbus, NE 68601',
      'Columbus',
      'NE',
      'Please call (402) 562-8960 prior to drop off',
      'Yes',
      '41.4308989',
      '-97.3360515'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'East Central District Health Department'
        AND o.latitude = '41.4308989'
        AND o.longitude = '-97.3360515'));

COMMIT;
