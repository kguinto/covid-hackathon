
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
      'ORION Physical Therapy',
      '270 Penn Way
Los Gatos, CA 95032',
      'Los Gatos',
      'CA',
      'Door step',
      'No',
      '37.2484659',
      '-121.9519771'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'ORION Physical Therapy'
        AND o.latitude = '37.2484659'
        AND o.longitude = '-121.9519771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'ORION Physical Therapy'
        AND o.latitude = '37.2484659'
        AND o.longitude = '-121.9519771'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'ORION Physical Therapy'
        AND o.latitude = '37.2484659'
        AND o.longitude = '-121.9519771'));

COMMIT;
