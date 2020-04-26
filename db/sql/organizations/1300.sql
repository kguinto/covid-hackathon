
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
      'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)',
      '6020 Industrial Blvd
Century, FL 32535',
      'Century',
      'FL',
      'Drop off at the front lobby',
      'Yes',
      '30.971315',
      '-87.273087'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Century Center for Rehabilitation and Healing (Century Health and Rehab Center)'
        AND o.latitude = '30.971315'
        AND o.longitude = '-87.273087'));

COMMIT;
