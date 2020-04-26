
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
      'Lakeside Community Healthcare',
      '191 S Buena Vista St #240
Burbank, CA 91505',
      'Burbank',
      'CA',
      'ATTN: Dr. Rungsima',
      'No',
      '34.1584395',
      '-118.3290952'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeside Community Healthcare'
        AND o.latitude = '34.1584395'
        AND o.longitude = '-118.3290952'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Lakeside Community Healthcare'
        AND o.latitude = '34.1584395'
        AND o.longitude = '-118.3290952'));

COMMIT;
