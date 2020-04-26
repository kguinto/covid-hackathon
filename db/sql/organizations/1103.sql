
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
      'Middlesex hospital',
      '28 Crescent St
Middletown, CT 06457',
      'Middletown ',
      'CT',
      'Security department ',
      'Yes',
      '41.5544714',
      '-72.6470639'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Middlesex hospital'
        AND o.latitude = '41.5544714'
        AND o.longitude = '-72.6470639'));

COMMIT;
