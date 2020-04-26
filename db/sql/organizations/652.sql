
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
      'Katy Center for Oral and Facial Surgery',
      '23922 Cinco Village Center Blvd #111
Katy, TX 77494',
      'Katy',
      'TX',
      'Please call office at dropoff for secure delivery 281-392-1130',
      'Yes',
      '29.7396866',
      '-95.7773075'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katy Center for Oral and Facial Surgery'
        AND o.latitude = '29.7396866'
        AND o.longitude = '-95.7773075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katy Center for Oral and Facial Surgery'
        AND o.latitude = '29.7396866'
        AND o.longitude = '-95.7773075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katy Center for Oral and Facial Surgery'
        AND o.latitude = '29.7396866'
        AND o.longitude = '-95.7773075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katy Center for Oral and Facial Surgery'
        AND o.latitude = '29.7396866'
        AND o.longitude = '-95.7773075'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Katy Center for Oral and Facial Surgery'
        AND o.latitude = '29.7396866'
        AND o.longitude = '-95.7773075'));

COMMIT;
