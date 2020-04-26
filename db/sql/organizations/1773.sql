
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
      'One Medical Group: Emeryville ',
      '1333 Powell St Suite A103
Emeryville, CA 94608',
      'Emeryville',
      'CA',
      'Deliveries can be made to the Emeryville Powell st. location. Please call Jen Rodney @707-227-2767 and she will meet you! If you can''t get a hold of Jen Rodney please call Jessie Kearse @510-586-5506',
      'Yes',
      '37.8394941',
      '-122.2884026'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical Group: Emeryville '
        AND o.latitude = '37.8394941'
        AND o.longitude = '-122.2884026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical Group: Emeryville '
        AND o.latitude = '37.8394941'
        AND o.longitude = '-122.2884026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical Group: Emeryville '
        AND o.latitude = '37.8394941'
        AND o.longitude = '-122.2884026'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'One Medical Group: Emeryville '
        AND o.latitude = '37.8394941'
        AND o.longitude = '-122.2884026'));

COMMIT;
