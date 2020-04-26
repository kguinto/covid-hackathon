
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
      'Pacific Hills Manor',
      '370 Noble Ct
Morgan Hill, CA 95037',
      'Morgan HIll',
      'CA',
      'Drop off at Front Door',
      'No',
      '37.124018',
      '-121.6592796'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('full coverage coverall / head cover',
    (SELECT id FROM organizations o
      WHERE o.name = 'Pacific Hills Manor'
        AND o.latitude = '37.124018'
        AND o.longitude = '-121.6592796'));

COMMIT;
