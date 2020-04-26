
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
      'Gilroy Healthcare and Rehabilitation Center',
      '8170 Murray Ave
Gilroy, CA 95020',
      'Gilroy',
      'CA',
      'Drop off at the door of the front lobby',
      'Yes',
      '37.0179644',
      '-121.5665234'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Gilroy Healthcare and Rehabilitation Center'
        AND o.latitude = '37.0179644'
        AND o.longitude = '-121.5665234'));

COMMIT;
