
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
      'Addison Gilbert Hospital',
      '298 Washington Street
Gloucester, MA 01930',
      'Gloucester',
      'MA',
      'Drop off at ER',
      'Yes',
      '42.6252401',
      '-70.6806037'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Gilbert Hospital'
        AND o.latitude = '42.6252401'
        AND o.longitude = '-70.6806037'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Gilbert Hospital'
        AND o.latitude = '42.6252401'
        AND o.longitude = '-70.6806037'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Gilbert Hospital'
        AND o.latitude = '42.6252401'
        AND o.longitude = '-70.6806037'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Addison Gilbert Hospital'
        AND o.latitude = '42.6252401'
        AND o.longitude = '-70.6806037'));

COMMIT;
