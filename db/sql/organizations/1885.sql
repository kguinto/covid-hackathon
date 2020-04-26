
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
      'Neighborcare Health at 45th Street',
      '1629 N 45th St
Seattle, WA 98103',
      'Seattle',
      'WA',
      'At the front door',
      'Yes',
      '47.6611526',
      '-122.3377139'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Neighborcare Health at 45th Street'
        AND o.latitude = '47.6611526'
        AND o.longitude = '-122.3377139'));

COMMIT;
