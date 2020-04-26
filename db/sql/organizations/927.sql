
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
      'In Home Recovery',
      '5512 Arizona Dr
Concord, CA 94521',
      'Concord',
      'CA',
      '',
      'Yes',
      '37.9480066',
      '-121.9549322'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'In Home Recovery'
        AND o.latitude = '37.9480066'
        AND o.longitude = '-121.9549322'));

COMMIT;
