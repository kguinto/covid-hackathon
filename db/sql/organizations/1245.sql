
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
      'Ascentria Care Alliance',
      '14 E Worcester St #300
Worcester, MA 01604',
      'Worcester',
      'MA',
      'AttN: Neal Wynne , Ascentria Care Alliance ,14 East Worcester St., Suite 300, Worcester MA 01604',
      'Yes',
      '42.262885',
      '-71.7900927'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Ascentria Care Alliance'
        AND o.latitude = '42.262885'
        AND o.longitude = '-71.7900927'));

COMMIT;
