
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
      'Mission Hospice and Home Care',
      '1670 S Amphlett Blvd, Suite 300
San Mateo, CA 94402',
      'San Mateo ',
      'CA',
      'Please contact Laurie Hill at lhill@missionhospice.org she is accepting donations Monday through Friday 8-5pm.',
      'No',
      '37.5590634',
      '-122.3028677'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Mission Hospice and Home Care'
        AND o.latitude = '37.5590634'
        AND o.longitude = '-122.3028677'));

COMMIT;
