
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
      'Lifespan - The Miriam Hospital',
      '164 Summit Ave
Providence, RI 02906',
      'Providence ',
      'RI',
      'Lifespan Donation Instructions: https://www.lifespan.org/covid-donations',
      'Yes',
      '41.850533',
      '-71.398247'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lifespan - The Miriam Hospital'
        AND o.latitude = '41.850533'
        AND o.longitude = '-71.398247'));

COMMIT;
