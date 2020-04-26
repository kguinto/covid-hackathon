
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
      'The Miami Foundation for Science & Medicine, Inc.',
      '6705 Red Road, Suite 516
Coral Gables, FL 33146',
      'Miami',
      'FL',
      'ATTN: Dr Arthur Desrosiers',
      'Yes',
      '25.7061121',
      '-80.2852461'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Miami Foundation for Science & Medicine, Inc.'
        AND o.latitude = '25.7061121'
        AND o.longitude = '-80.2852461'));

COMMIT;
