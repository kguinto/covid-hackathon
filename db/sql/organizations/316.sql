
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
      'Virtua ',
      '303 Lippincott Dr.
Marlton NJ 08053',
      'Marlton ',
      'NJ',
      'Deliver to Security Officer on-site in lobby',
      'Yes',
      '39.8844933',
      '-74.9277276'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Virtua '
        AND o.latitude = '39.8844933'
        AND o.longitude = '-74.9277276'));

COMMIT;
