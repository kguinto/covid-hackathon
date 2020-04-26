
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
      'HopeHealth',
      '1085 N Main St
Providence, RI 02904',
      'Providence',
      'RI',
      'Items can be left at front door, contact is June Steele',
      'No',
      '41.8498421',
      '-71.4020129'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'HopeHealth'
        AND o.latitude = '41.8498421'
        AND o.longitude = '-71.4020129'));

COMMIT;
