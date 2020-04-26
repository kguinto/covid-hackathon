
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
      'Kaiser Permanente - West Los Angeles',
      '6041 Cadillac Ave., Ste 503
Los Angeles, CA 90034',
      'Los Angeles ',
      'CA',
      'Drop off at info desk in courtyard or mail ATTN:  Angela Nakamoto (PPE DONATION). Please call 323-853-1412. | 

Attn: Carolyn Overman MD, Emergency Department |

Attn: Urgent Care Department',
      'Yes',
      '34.0383728',
      '-118.3750021'
    );

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('N95s',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Surgical masks',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Face shields',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disposable booties',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Safety goggles',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gloves',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Gowns',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Hand sanitizer',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Disinfecting wipes',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

INSERT INTO organization_needs
    (need, org_id)
  VALUES
    ('Thermometers',
    (SELECT id FROM organizations o
      WHERE o.name = 'Kaiser Permanente - West Los Angeles'
        AND o.latitude = '34.0383728'
        AND o.longitude = '-118.3750021'));

COMMIT;
