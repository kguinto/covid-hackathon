
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
      'Integris Grove General Hospital',
      '1001 E 18th St
Grove, OK 74344',
      'Grove',
      'OK',
      'Contact the administration office to set up a drop off time. 918-786-2243.',
      'Yes',
      '36.5813316',
      '-94.7586391'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integris Grove General Hospital'
        AND o.latitude = '36.5813316'
        AND o.longitude = '-94.7586391'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integris Grove General Hospital'
        AND o.latitude = '36.5813316'
        AND o.longitude = '-94.7586391'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integris Grove General Hospital'
        AND o.latitude = '36.5813316'
        AND o.longitude = '-94.7586391'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integris Grove General Hospital'
        AND o.latitude = '36.5813316'
        AND o.longitude = '-94.7586391'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integris Grove General Hospital'
        AND o.latitude = '36.5813316'
        AND o.longitude = '-94.7586391'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Integris Grove General Hospital'
        AND o.latitude = '36.5813316'
        AND o.longitude = '-94.7586391'));

COMMIT;
