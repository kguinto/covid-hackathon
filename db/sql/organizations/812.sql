
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
      'Midwest Express Clinic - Blue Island',
      '12200 Western Ave. #100
Blue Island, IL 60406',
      'Blue Island',
      'IL',
      'Stay in your vehicle and call us at 708-631-2781, we will pick up curbside - thank you! ',
      'Yes',
      '41.6714384',
      '-87.680996'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Blue Island'
        AND o.latitude = '41.6714384'
        AND o.longitude = '-87.680996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Blue Island'
        AND o.latitude = '41.6714384'
        AND o.longitude = '-87.680996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Blue Island'
        AND o.latitude = '41.6714384'
        AND o.longitude = '-87.680996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Blue Island'
        AND o.latitude = '41.6714384'
        AND o.longitude = '-87.680996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Blue Island'
        AND o.latitude = '41.6714384'
        AND o.longitude = '-87.680996'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Midwest Express Clinic - Blue Island'
        AND o.latitude = '41.6714384'
        AND o.longitude = '-87.680996'));

COMMIT;
