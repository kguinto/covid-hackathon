
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
      'Post Acute Medical North Clear Lake',
      '655 E Medical Center Blvd
Webster, TX 77598',
      'Webster',
      'TX',
      '',
      'Yes',
      '29.5478299',
      '-95.117639'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Post Acute Medical North Clear Lake'
        AND o.latitude = '29.5478299'
        AND o.longitude = '-95.117639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Post Acute Medical North Clear Lake'
        AND o.latitude = '29.5478299'
        AND o.longitude = '-95.117639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Post Acute Medical North Clear Lake'
        AND o.latitude = '29.5478299'
        AND o.longitude = '-95.117639'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Post Acute Medical North Clear Lake'
        AND o.latitude = '29.5478299'
        AND o.longitude = '-95.117639'));

COMMIT;
