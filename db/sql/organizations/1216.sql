
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
      'Maternity at Miami Valley Hospital South ',
      '2400 Miami Valley Dr
Centerville, OH 45459',
      'Centerville ',
      'OH',
      'Drop off at Maternity at back of hospital or mail in care of maternity if a donation, in care of Maternity RNs',
      'No',
      '39.6524128',
      '-84.1140877'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Maternity at Miami Valley Hospital South '
        AND o.latitude = '39.6524128'
        AND o.longitude = '-84.1140877'));

COMMIT;
