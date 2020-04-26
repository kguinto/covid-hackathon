
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
      'Karmanos Cancer Hospital',
      '4100 John R St
Detroit, MI 48201',
      'Detroit ',
      'MI',
      'Any way you can get it to us ',
      'Yes',
      '42.3522105',
      '-83.0571962'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Karmanos Cancer Hospital'
        AND o.latitude = '42.3522105'
        AND o.longitude = '-83.0571962'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Karmanos Cancer Hospital'
        AND o.latitude = '42.3522105'
        AND o.longitude = '-83.0571962'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Karmanos Cancer Hospital'
        AND o.latitude = '42.3522105'
        AND o.longitude = '-83.0571962'));

COMMIT;
