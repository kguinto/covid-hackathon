
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
      'Fallbrook Woods Residential Care Facility',
      '60 Merrymeeting Dr
Portland, ME 04103',
      'Portland',
      'ME',
      'Curbside or mailing attention: Linda Hanson
',
      'Yes',
      '43.7013891',
      '-70.2815163'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Fallbrook Woods Residential Care Facility'
        AND o.latitude = '43.7013891'
        AND o.longitude = '-70.2815163'));

COMMIT;
