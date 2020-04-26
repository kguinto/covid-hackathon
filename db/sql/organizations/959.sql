
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
      'St. Jude Renal Care Facility, Inc.',
      'Kulot Di Rosa Dr, Chalan Kiya, Saipan
Northern Mariana Islands, GU 96950',
      'Northern Mariana Islands',
      'GU',
      'In front of Saipan Health Clinic, P.O. Box 502878, Kulot Di Rosa Dr.',
      'No',
      '15.1630474',
      '145.7217235'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'St. Jude Renal Care Facility, Inc.'
        AND o.latitude = '15.1630474'
        AND o.longitude = '145.7217235'));

COMMIT;
