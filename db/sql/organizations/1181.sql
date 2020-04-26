
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
      'Maxim Healthcare Services - Exton, PA Branch',
      '748 Springdale Dr #120
Exton, PA 19341',
      'Exton',
      'PA',
      'Either mail in attention to Julie Dimino or can drop off curbside in front of building',
      'Yes',
      '40.0289501',
      '-75.6046683'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services - Exton, PA Branch'
        AND o.latitude = '40.0289501'
        AND o.longitude = '-75.6046683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services - Exton, PA Branch'
        AND o.latitude = '40.0289501'
        AND o.longitude = '-75.6046683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services - Exton, PA Branch'
        AND o.latitude = '40.0289501'
        AND o.longitude = '-75.6046683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services - Exton, PA Branch'
        AND o.latitude = '40.0289501'
        AND o.longitude = '-75.6046683'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maxim Healthcare Services - Exton, PA Branch'
        AND o.latitude = '40.0289501'
        AND o.longitude = '-75.6046683'));

COMMIT;
