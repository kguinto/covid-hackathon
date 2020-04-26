
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
      'The Rivers Grosse Point Skilled Nursing',
      '900 Cook Rd
Grosse Pointe Woods, MI 48236',
      'Grosse Pointe Woods',
      'MI',
      'Rehab entrance, or security desk',
      'Yes',
      '42.4242825',
      '-82.8968661'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Rivers Grosse Point Skilled Nursing'
        AND o.latitude = '42.4242825'
        AND o.longitude = '-82.8968661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Rivers Grosse Point Skilled Nursing'
        AND o.latitude = '42.4242825'
        AND o.longitude = '-82.8968661'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'The Rivers Grosse Point Skilled Nursing'
        AND o.latitude = '42.4242825'
        AND o.longitude = '-82.8968661'));

COMMIT;
