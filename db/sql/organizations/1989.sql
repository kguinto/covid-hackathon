
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
      'Lahey Hospital & Medical Center',
      '41 Burlington Mall Road
Burlington, MA 01803',
      'Burlington',
      'MA',
      'Loading dock',
      'Yes',
      '42.4848754',
      '-71.2051901'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lahey Hospital & Medical Center'
        AND o.latitude = '42.4848754'
        AND o.longitude = '-71.2051901'));

COMMIT;