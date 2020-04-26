
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
      'Alpha Internal Medicine',
      '22 Stanebrook Ct
Jonesboro, GA 30238',
      'jonesboro',
      'GA',
      'Place in mailbox if possible or leave on doorstep',
      'Yes',
      '33.5394357',
      '-84.3899112'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Internal Medicine'
        AND o.latitude = '33.5394357'
        AND o.longitude = '-84.3899112'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Internal Medicine'
        AND o.latitude = '33.5394357'
        AND o.longitude = '-84.3899112'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Internal Medicine'
        AND o.latitude = '33.5394357'
        AND o.longitude = '-84.3899112'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Internal Medicine'
        AND o.latitude = '33.5394357'
        AND o.longitude = '-84.3899112'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Alpha Internal Medicine'
        AND o.latitude = '33.5394357'
        AND o.longitude = '-84.3899112'));

COMMIT;
