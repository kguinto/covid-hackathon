
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
      'Palo Alto Medical Foundation Santa Cruz Chanticleer Center',
      '2907 Chanticleer Ave.
Santa Cruz, CA 95065',
      'Santa Cruz',
      'CA',
      'Drop off curbside with call to 831-477-2377, attn: OBGYN department',
      'No',
      '36.9877256',
      '-121.9786693'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation Santa Cruz Chanticleer Center'
        AND o.latitude = '36.9877256'
        AND o.longitude = '-121.9786693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation Santa Cruz Chanticleer Center'
        AND o.latitude = '36.9877256'
        AND o.longitude = '-121.9786693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation Santa Cruz Chanticleer Center'
        AND o.latitude = '36.9877256'
        AND o.longitude = '-121.9786693'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Palo Alto Medical Foundation Santa Cruz Chanticleer Center'
        AND o.latitude = '36.9877256'
        AND o.longitude = '-121.9786693'));

COMMIT;
