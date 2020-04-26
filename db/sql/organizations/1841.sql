
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
      'R0 Labs',
      '23 Ibbetson St
Somerville, MA 02143',
      'Somerville',
      'MA',
      'Call + leave at the curb',
      'Yes.  Prefer open packaging, and a small quantity of a mix of items -- will be used for testing sterilization procedures',
      '42.3856036',
      '-71.1115919'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'R0 Labs'
        AND o.latitude = '42.3856036'
        AND o.longitude = '-71.1115919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'R0 Labs'
        AND o.latitude = '42.3856036'
        AND o.longitude = '-71.1115919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'R0 Labs'
        AND o.latitude = '42.3856036'
        AND o.longitude = '-71.1115919'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'R0 Labs'
        AND o.latitude = '42.3856036'
        AND o.longitude = '-71.1115919'));

COMMIT;
