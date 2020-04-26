
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
      'White Bear Lake Endodontics',
      '4801 Highway 61 N, Suite 200
White Bear Lake, MN 55110',
      'White Bear Lake',
      'MN',
      'Attn: Dr. Olga Ivett Castro',
      'No',
      '45.0870213',
      '-93.0096283'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Bear Lake Endodontics'
        AND o.latitude = '45.0870213'
        AND o.longitude = '-93.0096283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Bear Lake Endodontics'
        AND o.latitude = '45.0870213'
        AND o.longitude = '-93.0096283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Bear Lake Endodontics'
        AND o.latitude = '45.0870213'
        AND o.longitude = '-93.0096283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Bear Lake Endodontics'
        AND o.latitude = '45.0870213'
        AND o.longitude = '-93.0096283'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'White Bear Lake Endodontics'
        AND o.latitude = '45.0870213'
        AND o.longitude = '-93.0096283'));

COMMIT;
