
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
      'Vi at Palo Alto - Continuing Care Retirement Community',
      '620 Sand Hill Rd
Palo Alto, CA 94304',
      'Palo Alto',
      'CA',
      'Please mail, ATTN: Justine Dewey',
      'No',
      '37.4396062',
      '-122.17544'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vi at Palo Alto - Continuing Care Retirement Community'
        AND o.latitude = '37.4396062'
        AND o.longitude = '-122.17544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vi at Palo Alto - Continuing Care Retirement Community'
        AND o.latitude = '37.4396062'
        AND o.longitude = '-122.17544'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Vi at Palo Alto - Continuing Care Retirement Community'
        AND o.latitude = '37.4396062'
        AND o.longitude = '-122.17544'));

COMMIT;
