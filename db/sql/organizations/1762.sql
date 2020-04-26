
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
      'Home Health & Hospice Care',
      '7 Executive Park Dr
Merrimack, NH 03054',
      'Merrimack',
      'NH',
      '7 Executive Park Drive',
      'Yes',
      '42.8443737',
      '-71.4965821'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health & Hospice Care'
        AND o.latitude = '42.8443737'
        AND o.longitude = '-71.4965821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health & Hospice Care'
        AND o.latitude = '42.8443737'
        AND o.longitude = '-71.4965821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health & Hospice Care'
        AND o.latitude = '42.8443737'
        AND o.longitude = '-71.4965821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health & Hospice Care'
        AND o.latitude = '42.8443737'
        AND o.longitude = '-71.4965821'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Home Health & Hospice Care'
        AND o.latitude = '42.8443737'
        AND o.longitude = '-71.4965821'));

COMMIT;
