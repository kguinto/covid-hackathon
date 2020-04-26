
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
      'Sandy Ridge Center for Rehabiliation and Healing',
      '5360 Glover Ln
Milton, FL 32570',
      'Milton',
      'FL',
      'ATTN:  Administrator',
      'Yes',
      '30.6301619',
      '-87.063636'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Sandy Ridge Center for Rehabiliation and Healing'
        AND o.latitude = '30.6301619'
        AND o.longitude = '-87.063636'));

COMMIT;
