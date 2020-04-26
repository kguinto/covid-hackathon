
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
      'Branford Hills Homecare Services',
      '29 Business Park Dr Suite A
Branford, CT 06405',
      'Branford ',
      'CT',
      'Mailing address Attn:  Patti Fisher',
      'Yes',
      '41.2956443',
      '-72.7720117'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Branford Hills Homecare Services'
        AND o.latitude = '41.2956443'
        AND o.longitude = '-72.7720117'));

COMMIT;
