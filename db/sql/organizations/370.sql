
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
      'Frankford Hospital',
      '4900 Frankford Ave
Philadelphia, PA 19124',
      'Philadelphia',
      'PA',
      'Main lobby',
      'Yes',
      '40.019879',
      '-75.0816014'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frankford Hospital'
        AND o.latitude = '40.019879'
        AND o.longitude = '-75.0816014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frankford Hospital'
        AND o.latitude = '40.019879'
        AND o.longitude = '-75.0816014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frankford Hospital'
        AND o.latitude = '40.019879'
        AND o.longitude = '-75.0816014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frankford Hospital'
        AND o.latitude = '40.019879'
        AND o.longitude = '-75.0816014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frankford Hospital'
        AND o.latitude = '40.019879'
        AND o.longitude = '-75.0816014'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Frankford Hospital'
        AND o.latitude = '40.019879'
        AND o.longitude = '-75.0816014'));

COMMIT;
