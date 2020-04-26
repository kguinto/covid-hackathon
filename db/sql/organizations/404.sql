
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
      'University Hospital in Newark, NJ',
      '150 Bergen St
Newark, NJ 07103',
      'Newark',
      'NJ',
      'Please email archana.babu@rutgers.edu regarding drop-off instructions.',
      'Yes',
      '40.740611',
      '-74.1910862'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'University Hospital in Newark, NJ'
        AND o.latitude = '40.740611'
        AND o.longitude = '-74.1910862'));

COMMIT;
