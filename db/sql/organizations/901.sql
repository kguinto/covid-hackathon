
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
      'Durham Fire Department',
      '2008 E Club Blvd
Durham, NC 27704',
      'Durham',
      'NC',
      'Attn: Chief Tina Hamlin',
      'Yes',
      '36.0259349',
      '-78.859992'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durham Fire Department'
        AND o.latitude = '36.0259349'
        AND o.longitude = '-78.859992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durham Fire Department'
        AND o.latitude = '36.0259349'
        AND o.longitude = '-78.859992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durham Fire Department'
        AND o.latitude = '36.0259349'
        AND o.longitude = '-78.859992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durham Fire Department'
        AND o.latitude = '36.0259349'
        AND o.longitude = '-78.859992'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Durham Fire Department'
        AND o.latitude = '36.0259349'
        AND o.longitude = '-78.859992'));

COMMIT;
