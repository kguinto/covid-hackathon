
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
      'Saint Francis Memorial Hospital',
      '900 Hyde St
San Francisco, CA 94109',
      'San Francisco',
      'CA',
      'Email Avinesh.Maharaj@dignityhealth.org',
      'No',
      '37.7893799',
      '-122.4167294'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Memorial Hospital'
        AND o.latitude = '37.7893799'
        AND o.longitude = '-122.4167294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Memorial Hospital'
        AND o.latitude = '37.7893799'
        AND o.longitude = '-122.4167294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Memorial Hospital'
        AND o.latitude = '37.7893799'
        AND o.longitude = '-122.4167294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Memorial Hospital'
        AND o.latitude = '37.7893799'
        AND o.longitude = '-122.4167294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Memorial Hospital'
        AND o.latitude = '37.7893799'
        AND o.longitude = '-122.4167294'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfectant wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Saint Francis Memorial Hospital'
        AND o.latitude = '37.7893799'
        AND o.longitude = '-122.4167294'));

COMMIT;
