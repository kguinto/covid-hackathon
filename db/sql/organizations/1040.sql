
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
      'Legacy Health Cancer Institute',
      '700 N.E. 87th Ave., Ste. 360
Vancouver, WA 98664',
      'Vancouver',
      'WA',
      'Curbside Attn: Pharmacy',
      'Yes',
      '45.6253247',
      '-122.5846665'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health Cancer Institute'
        AND o.latitude = '45.6253247'
        AND o.longitude = '-122.5846665'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health Cancer Institute'
        AND o.latitude = '45.6253247'
        AND o.longitude = '-122.5846665'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health Cancer Institute'
        AND o.latitude = '45.6253247'
        AND o.longitude = '-122.5846665'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Legacy Health Cancer Institute'
        AND o.latitude = '45.6253247'
        AND o.longitude = '-122.5846665'));

COMMIT;
