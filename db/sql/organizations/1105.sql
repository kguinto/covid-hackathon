
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
      'Kettering Health Network',
      '3535 Southern Blvd
Dayton, OH 45429',
      'Dayton',
      'OH',
      'Kettering Medical Center, Attn: Dr. Robert Smith',
      'Not sure... need to check with Infectious Disease.  Thank you for doing this!',
      '39.6975779',
      '-84.1910137'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Please contact me before sending anything.  I am checking to see if local manufacturers can make some masks and inquire more about needs.',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kettering Health Network'
        AND o.latitude = '39.6975779'
        AND o.longitude = '-84.1910137'));

COMMIT;
