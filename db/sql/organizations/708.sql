
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
      'North Shore Hospital - Chicago',
      '1076 Ironwood Ct
Glenview, IL 60025',
      'Glenview',
      'IL',
      'Residential. MD in need for outpatient ophthalmology clinic- curbside is great',
      'No',
      '42.077229',
      '-87.854991'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore Hospital - Chicago'
        AND o.latitude = '42.077229'
        AND o.longitude = '-87.854991'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'North Shore Hospital - Chicago'
        AND o.latitude = '42.077229'
        AND o.longitude = '-87.854991'));

COMMIT;
