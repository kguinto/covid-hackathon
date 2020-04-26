
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
      'Troy Pediatrics,LLP',
      '258 Hoosick St #106
Troy, NY 12180',
      'Troy',
      'NY',
      'Attn :Dr. Marci Reynolds',
      'Would prefer unopened but would take open if needed',
      '42.7375259',
      '-73.6717372'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Troy Pediatrics,LLP'
        AND o.latitude = '42.7375259'
        AND o.longitude = '-73.6717372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Troy Pediatrics,LLP'
        AND o.latitude = '42.7375259'
        AND o.longitude = '-73.6717372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Troy Pediatrics,LLP'
        AND o.latitude = '42.7375259'
        AND o.longitude = '-73.6717372'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Troy Pediatrics,LLP'
        AND o.latitude = '42.7375259'
        AND o.longitude = '-73.6717372'));

COMMIT;
