
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
      'New Haven In-Home Care Inc ',
      '333 Gellert Blvd #227
Daly City, CA 94015',
      'Daly City',
      'CA',
      'Office in 2nd floor. Please deliver in the unit. Thank you ',
      'Yes',
      '37.6667243',
      '-122.4668185'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Haven In-Home Care Inc '
        AND o.latitude = '37.6667243'
        AND o.longitude = '-122.4668185'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Haven In-Home Care Inc '
        AND o.latitude = '37.6667243'
        AND o.longitude = '-122.4668185'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Haven In-Home Care Inc '
        AND o.latitude = '37.6667243'
        AND o.longitude = '-122.4668185'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Haven In-Home Care Inc '
        AND o.latitude = '37.6667243'
        AND o.longitude = '-122.4668185'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'New Haven In-Home Care Inc '
        AND o.latitude = '37.6667243'
        AND o.longitude = '-122.4668185'));

COMMIT;
